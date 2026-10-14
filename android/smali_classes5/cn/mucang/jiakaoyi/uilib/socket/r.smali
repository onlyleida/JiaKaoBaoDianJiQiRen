.class public final Lcn/mucang/jiakaoyi/uilib/socket/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/io/DataInputStream;

.field private c:Ljava/io/BufferedOutputStream;

.field private d:Lcn/mucang/jiakaoyi/uilib/socket/p;

.field private e:Ljava/lang/String;

.field private final f:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

.field private final g:Z

.field private h:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

.field private i:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

.field private j:Ljava/lang/String;

.field private k:I

.field private final l:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

.field private final m:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;

.field private final n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ZLcn/mucang/jiakaoyi/uilib/socket/p$a;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/r$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/r$a;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/r;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->m:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;

    .line 3
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->n:Ljava/lang/Runnable;

    .line 4
    new-instance p3, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v2}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;-><init>(II)V

    invoke-direct {p3, v1, v0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;)V

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->f:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    .line 5
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->g:Z

    .line 6
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->l:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    return-void
.end method

.method static synthetic a(Lcn/mucang/jiakaoyi/uilib/socket/r;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->g:Z

    return p0
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->c()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->h:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->h:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->g()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tcp\u5173\u95edgps udp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->i:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

    .line 6
    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->i:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->g()V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tcp\u5173\u95ed\u4e1a\u52a1udp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private f(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->d()V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->j:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->k:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u8fde\u63a5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->a:Ljava/net/Socket;

    .line 6
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 7
    new-instance p1, Ljava/io/DataInputStream;

    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->a:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->b:Ljava/io/DataInputStream;

    .line 8
    new-instance p1, Ljava/io/BufferedOutputStream;

    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->a:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->c:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private g(Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->m()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;->isTokenExpired()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "token\u8fc7\u671f"

    goto :goto_0

    :cond_1
    const-string p1, "token\u975e\u6cd5"

    .line 4
    :goto_0
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/r;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->k:I

    xor-int/lit16 v1, v1, 0x457

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    const-string v1, "1"

    const-string v2, "*"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "8"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u767b\u9646:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->c:Ljava/io/BufferedOutputStream;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/socket/s;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u767b\u9646\u6570\u636e\u5199\u5b8c\u6bd5\uff0c\u7b49\u5f85\u56de\u5e94:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->b:Ljava/io/DataInputStream;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/socket/util/c;->b(Ljava/io/DataInputStream;)Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u767b\u9646\u56de\u5e94:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 7
    instance-of v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;

    .line 9
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/r;->g(Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/r;->l(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u767b\u9646\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->e:Ljava/lang/String;

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u767b\u9646\u6210\u529f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u91cd\u8bd5\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->g:Z

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->I(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->I(J)V

    :goto_0
    return-void
.end method

.method private r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsService"

    goto :goto_0

    :cond_0
    const-string v0, "BusinessService"

    :goto_0
    return-object v0
.end method

.method private v()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->e()V

    .line 2
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->g:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->l(Z)V

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->j:Ljava/lang/String;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->k:I

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->l:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->n:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;-><init>(Ljava/lang/String;ILcn/mucang/jiakaoyi/uilib/socket/p$a;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->h:Lcn/mucang/jiakaoyi/uilib/socket/a0/l;

    .line 5
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/l;->t()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->j:Ljava/lang/String;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->k:I

    invoke-direct {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->i:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

    .line 8
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->w()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->d:Lcn/mucang/jiakaoyi/uilib/socket/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8bfb\u7ebf\u7a0b\u4e3a\u7a7a, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->c:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->a:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 4
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "socket\u6ca1\u6709\u8fde\u63a5, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return v1
.end method

.method public c()V
    .locals 4

    const-string v0, " , "

    .line 1
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->g:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->l(Z)V

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5173\u95edsocket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->d:Lcn/mucang/jiakaoyi/uilib/socket/p;

    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 5
    :try_start_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->a:Ljava/net/Socket;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5173\u95edsocket\u8f93\u5165\u6d41\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 8
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->a:Ljava/net/Socket;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5173\u95edsocket\u8f93\u51fa\u6d41\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 11
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->a:Ljava/net/Socket;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->b:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->c:Ljava/io/BufferedOutputStream;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 14
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->f:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->i()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->d:Lcn/mucang/jiakaoyi/uilib/socket/p;

    .line 16
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->a:Ljava/net/Socket;

    .line 17
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->b:Ljava/io/DataInputStream;

    .line 18
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->c:Ljava/io/BufferedOutputStream;

    .line 19
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->e()V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->i:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u91cd\u8fde: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->d()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->e:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/r;->f(Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/r;->k(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->l:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/r;->u(Lcn/mucang/jiakaoyi/uilib/socket/p$a;)V

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->o()V

    .line 8
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;

    const/4 p2, 0x3

    const-string v0, "\u767b\u9646\u5931\u8d25"

    invoke-direct {p1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->o()V

    .line 10
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;

    const/4 p2, 0x4

    const-string v0, "\u9274\u6743\u5931\u8d25"

    invoke-direct {p1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 11
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->o()V

    .line 12
    throw p1
.end method

.method public p([B)Z
    .locals 6

    const-string v0, " , "

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 1
    :try_start_0
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->c:Ljava/io/BufferedOutputStream;

    if-eqz v3, :cond_0

    .line 2
    array-length v4, p1

    invoke-virtual {v3, p1, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 3
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    .line 4
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u8f93\u51fa\u6d41\u4e3a\u7a7a\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    if-le v4, v2, :cond_1

    aget-byte v4, p1, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u53d1\u9001\u6570\u636e\u5f02\u5e38\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    if-le v0, v2, :cond_2

    aget-byte v1, p1, v2

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public q(B[B)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->i:Lcn/mucang/jiakaoyi/uilib/socket/a0/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/a0/k;->v(B[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->f:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->f(I)V

    return-void
.end method

.method public t()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u83b7\u53d6\u9274\u6743\u4fe1\u606f, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->g:Z

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/q;->a(Z)Lcn/mucang/jiakaoyi/uilib/socket/model/SocketInfo;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u9274\u6743\u4fe1\u606f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketInfo;->token:Ljava/lang/String;

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->e:Ljava/lang/String;

    .line 5
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketInfo;->ip:Ljava/lang/String;

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->j:Ljava/lang/String;

    .line 6
    iget v2, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketInfo;->port:I

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->k:I

    .line 7
    invoke-direct {p0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/r;->f(Ljava/lang/String;I)V

    .line 8
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketInfo;->token:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/r;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->f:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    iget-object v2, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketInfo;->heartBeatPolicy:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->e(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->l:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    invoke-virtual {p0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/r;->u(Lcn/mucang/jiakaoyi/uilib/socket/p$a;)V

    .line 11
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->g:Z

    if-eqz v1, :cond_0

    .line 12
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->j()V

    .line 13
    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/socket/model/SocketInfo;->ip:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->i(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 14
    :cond_1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;

    const/4 v1, 0x3

    const-string v2, "\u767b\u9646\u5931\u8d25"

    invoke-direct {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;

    const/4 v1, 0x4

    const-string v2, "\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public u(Lcn/mucang/jiakaoyi/uilib/socket/p$a;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/p;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->b:Ljava/io/DataInputStream;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/p;-><init>(Ljava/io/DataInputStream;Lcn/mucang/jiakaoyi/uilib/socket/p$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->d:Lcn/mucang/jiakaoyi/uilib/socket/p;

    .line 2
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->d:Lcn/mucang/jiakaoyi/uilib/socket/p;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/r;->f:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->g()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->v()V

    return-void
.end method
