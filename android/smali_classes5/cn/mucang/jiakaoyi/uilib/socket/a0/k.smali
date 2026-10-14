.class public Lcn/mucang/jiakaoyi/uilib/socket/a0/k;
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

.field private b:Ljava/net/DatagramSocket;

.field private volatile c:Z

.field private final d:I

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:[B

.field private i:Landroid/os/Handler;

.field private j:Landroid/os/HandlerThread;

.field private k:I

.field private final l:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k$a;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->a:Landroidx/lifecycle/a0;

    const/16 v0, 0x5dc

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->l:[B

    add-int/lit8 p2, p2, 0x1

    .line 4
    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->d:I

    .line 5
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c:Z

    return-void
.end method

.method static synthetic a(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->k:I

    return p1
.end method

.method static synthetic b(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->f:I

    return p1
.end method

.method static synthetic c(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;[B)[B
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->h:[B

    return-object p1
.end method

.method static synthetic e(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->x()V

    return-void
.end method

.method static synthetic f(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->k(Landroid/os/Message;)V

    return-void
.end method

.method private h()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x1e

    :goto_0
    if-lez v0, :cond_3

    .line 3
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c:Z

    if-nez v1, :cond_3

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c:Z

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b:Ljava/net/DatagramSocket;

    const/16 v2, 0x640

    .line 6
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 7
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->d:I

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e1a\u52a1udp:udp\u672c\u5730port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e1a\u52a1udp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 11
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b:Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b:Ljava/net/DatagramSocket;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e1a\u52a1udp:udp\u5173\u95ed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e1a\u52a1udp:udp\u5173\u95ed\u5b8c\u6210:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e1a\u52a1udp:udp\u5173\u95ed\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 9
    :goto_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/a;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private j(B[B)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->h:[B

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->k:I

    const/16 p2, 0x32

    if-lt p1, p2, :cond_1

    .line 4
    iput v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->k:I

    const-string p1, "\u4e1a\u52a1udp:\u7b49\u5f8550\u5e27\u8fd8\u6ca1\u6709token\uff0c\u4e0d\u5e94\u8be5\u53d1\u751f\uff0c\u56e0\u4e3a\u662f\u5148\u6709token\u518d\u542f\u52a8udp\u8fde\u63a5"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    iput v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->k:I

    .line 7
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->y(B[B)[B

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 8
    :cond_3
    new-instance p2, Ljava/net/DatagramPacket;

    array-length v0, p1

    invoke-direct {p2, p1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b:Ljava/net/DatagramSocket;

    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e1a\u52a1udp:\u53d1\u9001\u6570\u636e\u5931\u8d25:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private k(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->i()V

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-byte v0, v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-direct {p0, v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->j(B[B)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->h()V

    :goto_0
    return-void
.end method

.method private synthetic m()V
    .locals 2

    .line 1
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->a:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private synthetic o()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a8\u51fa\u7ebf\u7a0b\u51fa\u9519:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic q()V
    .locals 5

    const-string v0, "bizUdp\u5f00\u59cbreceive\u6570\u636e"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b:Ljava/net/DatagramSocket;

    .line 3
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->l:[B

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 5
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 6
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    invoke-static {v2, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 7
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 12
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 13
    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->getMessageParser(I)Lcn/mucang/jiakaoyi/uilib/socket/z/t;

    move-result-object v1

    .line 14
    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/socket/config/MCMessageParserConfig;->getMessageHandler(I)Lcn/mucang/jiakaoyi/uilib/socket/y/w;

    move-result-object v4

    if-eqz v1, :cond_1

    .line 15
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/socket/z/t;->a(ILjava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;

    move-result-object v1

    if-eqz v4, :cond_0

    .line 16
    invoke-virtual {v4, v1}, Lcn/mucang/jiakaoyi/uilib/socket/y/w;->a(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)Z

    goto :goto_0

    .line 17
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bizUdp \u6ca1\u6709\u627e\u52300x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7684MessageParser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v1, "bizUdp receive \u6570\u636e\u957f\u5ea6 <= 1"

    .line 18
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bizUdp receive\u6570\u636e\u51fa\u9519:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "bizUdp\u7ed3\u675freceive\u6570\u636e"

    .line 20
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic s()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c:Z

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/UdpResponse;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->a:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-string v0, "\u4e1a\u52a1udp:\u8bf7\u6c42udp token"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/u;->a()Z

    :cond_1
    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/a0/d;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/d;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BusinessUdpThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->j:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k$b;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k$b;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;Landroid/os/Looper;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->i:Landroid/os/Handler;

    return-void
.end method

.method private y(B[B)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->h:[B

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 5
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->f:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->f:I

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public g()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c:Z

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/c;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/c;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4e1a\u52a1udp:\u53d1\u9001\u5173\u95ed\u6d88\u606f"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->b:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic n()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->m()V

    return-void
.end method

.method public synthetic p()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->o()V

    return-void
.end method

.method public synthetic r()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->q()V

    return-void
.end method

.method public synthetic t()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->s()V

    return-void
.end method

.method public v(B[B)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->i:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 2
    invoke-virtual {v1, v0, p1, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public w()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->c:Z

    const-string v0, "\u4e1a\u52a1udp:\u542f\u52a8udp"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/b;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/b;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/a0/k;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method
